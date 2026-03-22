.class public final Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;
.super Ljava/lang/Object;
.source "PlayerViewModel.kt"

# interfaces
.implements Llf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->L(Landroid/content/Context;Llf/s;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 2

    .line 1
    const-string v0, "errCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "onError ignore -> current("

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 33
    .line 34
    invoke-static {p3}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p3, ") valid("

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 p3, 0x29

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 71
    .line 72
    invoke-direct {v1, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/player/c$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "onPlaying ignore -> current("

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ") valid("

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x29

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/c$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/c$f;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "onRenderStart ignore -> current("

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") valid("

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x29

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 66
    .line 67
    invoke-direct {v1, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "onCompleted ignore -> current("

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ") valid("

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/c$c;

    .line 66
    .line 67
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$c;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public e(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "onRenderStart ignore -> current("

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") valid("

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x29

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 66
    .line 67
    invoke-direct {v1, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/player/c$h;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "onPaused ignore -> current("

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ") valid("

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x29

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/c$e;->a:Lcom/startshorts/androidplayer/viewmodel/player/c$e;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public g(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "onTimeInfo ignore -> current("

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") valid("

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x29

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/c$j;

    .line 66
    .line 67
    invoke-direct {v1, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/player/c$j;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onBufferEnd(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "onBufferEnd ignore -> current("

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ") valid("

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/c$a;

    .line 66
    .line 67
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$a;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onBufferStart(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p3, "onBufferStart ignore -> current("

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, ") valid("

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 p3, 0x29

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/c$b;

    .line 66
    .line 67
    invoke-direct {v1, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "onPrepared ignore -> current("

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ") valid("

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x29

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Llf/r;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Llf/r;->t()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/player/c$g;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getResolutionBeforeDowngrade()Lcom/ss/ttvideoengine/Resolution;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCurrentResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v2, v3, v0}, Lcom/startshorts/androidplayer/viewmodel/player/c$g;-><init>(Lcom/ss/ttvideoengine/Resolution;Lcom/ss/ttvideoengine/Resolution;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method

.method public onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 1

    .line 1
    const-string p2, "resolution"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "onVideoStreamBitrateChanged ignore -> current("

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ") valid("

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x29

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/player/c$i;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$i;-><init>(Lcom/ss/ttvideoengine/Resolution;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
