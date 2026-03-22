.class public Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;
.source "PermissionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/utils/permission/PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity<",
        "TVDB;>;",
        "Lcom/startshorts/androidplayer/utils/permission/PermissionCallbacks;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/PermissionActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1863#2,2:107\n*S KotlinDebug\n*F\n+ 1 PermissionActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/PermissionActivity\n*L\n56#1:107,2\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Lmk/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->o:Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;)Lmk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->l:Lmk/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;[Ljava/lang/String;ZILmk/b;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_2

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    const/4 p3, -0x1

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->I([Ljava/lang/String;ZILmk/b;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: checkPermissions"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method


# virtual methods
.method protected final I([Ljava/lang/String;ZILmk/b;)V
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lmk/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lmk/c;->a:Lmk/c;

    .line 12
    .line 13
    invoke-virtual {v1, p0, p1}, Lmk/c;->b(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/startshorts/androidplayer/bean/permission/CheckPermissionResult;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/permission/CheckPermissionResult;->getGranted()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/permission/CheckPermissionResult;->getPermission()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    if-eqz p4, :cond_3

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-static {p1}, Lkotlin/collections/n;->x1([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p4, p2, p1}, Lmk/b;->b(ZLjava/util/List;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    .line 68
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->m:[Ljava/lang/String;

    .line 69
    .line 70
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->l:Lmk/b;

    .line 71
    .line 72
    sget-object p2, Lmk/c;->a:Lmk/c;

    .line 73
    .line 74
    invoke-virtual {p2, p0, p3, p1}, Lmk/c;->i(Ljava/lang/Object;I[Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->n:Z

    .line 79
    .line 80
    if-eqz p4, :cond_3

    .line 81
    .line 82
    invoke-virtual {p4}, Lmk/b;->c()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    return-void
.end method

.method public c(ILjava/util/List;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "onPermissionsDenied -> requestCode("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ") permissions("

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->l:Lmk/b;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lmk/b;->a(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public d(ILjava/util/List;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "onPermissionsGranted -> requestCode("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ") permissions("

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->m:[Ljava/lang/String;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    array-length p1, p1

    .line 53
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ne p1, v0, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->l:Lmk/b;

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0, p2}, Lmk/b;->b(ZLjava/util/List;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lmk/c;->a:Lmk/c;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3, p0}, Lmk/c;->e(I[Ljava/lang/String;[ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->n:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->n:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->m:[Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$b;

    .line 16
    .line 17
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x4

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->J(Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;[Ljava/lang/String;ZILmk/b;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PermissionActivity"

    .line 2
    .line 3
    return-object v0
.end method
