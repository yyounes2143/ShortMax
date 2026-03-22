.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;
.super Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;
.source "ImmersionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->e7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    const-string v1, "onActionDownAfterFirstLongClick"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->E2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Landroid/view/MotionEvent;Z)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c6(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Landroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    const-string v1, "onActionUpAfterFirstLongClick"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c6(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Landroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->L1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->K1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    const-string v1, "onCancelFirstLongClick"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PAGE_CANCEL_FIRST_LONG_CLICK:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->L1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->K1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    const-string v1, "onCancelSecondLongClick"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PAGE_CANCEL_SECOND_LONG_CLICK:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->L1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->K1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->X2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->N1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->X2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 38
    .line 39
    const-wide/16 v1, 0x1388

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;J)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->h3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->e3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 36
    .line 37
    const-string v1, "onFirstLongClick"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PAGE_FIRST_LONG_CLICK:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 45
    .line 46
    new-instance v2, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 52
    .line 53
    const-string v4, "activity"

    .line 54
    .line 55
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    new-instance v3, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 61
    .line 62
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->D4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->C4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    const-string v1, "onMultiPointerTouch"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PAGE_MULTI_POINTER_TOUCH:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->w2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->k2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-static {v0, v3, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->v(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->k3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->I1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->k2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->h3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-static {v0, v3, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->v(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 104
    .line 105
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->k3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->u2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->h3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->e3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 44
    .line 45
    const-string v1, "onSecondLongClick"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 51
    .line 52
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PAGE_SECOND_LONG_CLICK:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    const-string v1, "onSwipeFromLeft"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 9
    .line 10
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    const-string v1, "onSwipeFromRight"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 9
    .line 10
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public m(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "onPositionUpdated -> oldPosition("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ") newPosition("

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x29

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 45
    .line 46
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
