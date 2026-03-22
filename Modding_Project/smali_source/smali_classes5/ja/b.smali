.class public final Lja/b;
.super Lka/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lv/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d:Lcom/facebook/i;

.field public final e:Lcom/facebook/login/LoginManager;

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lv/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lja/b;->g:Lv/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lka/i;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/i$b;->a()Lcom/facebook/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lja/b;->d:Lcom/facebook/i;

    .line 9
    .line 10
    sget-object v0, Lcom/facebook/login/LoginManager;->j:Lcom/facebook/login/LoginManager$b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$b;->c()Lcom/facebook/login/LoginManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lja/b;->e:Lcom/facebook/login/LoginManager;

    .line 17
    .line 18
    const-string v0, "email"

    .line 19
    .line 20
    const-string v1, "public_profile"

    .line 21
    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lja/b;->f:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method public static final s(Lja/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "http://graph.facebook.com/"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "/picture?type=large"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final t(Lja/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lka/i;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final u(Lja/b;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "authType"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lka/i;->a:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lka/i;->a:Z

    .line 16
    .line 17
    iget-object v0, p0, Lka/i;->b:Lka/b;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lka/b;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Lka/a;->tag()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "auth cancelled"

    .line 31
    .line 32
    invoke-interface {p2, p0, v0}, Lka/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p1}, Lka/j;->d(Lcom/hades/aar/auth/base/AuthType;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic v(Lja/b;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lka/i;->b(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public k(Landroid/app/Activity;ZLka/j;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lka/i;->k(Landroid/app/Activity;ZLka/j;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lv/d;

    .line 10
    .line 11
    invoke-direct {v0, p0, p3, p2, p1}, Lv/d;-><init>(Lja/b;Lka/j;ZLandroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lja/b;->e:Lcom/facebook/login/LoginManager;

    .line 15
    .line 16
    iget-object p3, p0, Lja/b;->d:Lcom/facebook/i;

    .line 17
    .line 18
    invoke-virtual {p2, p3, v0}, Lcom/facebook/login/LoginManager;->x(Lcom/facebook/i;Lcom/facebook/k;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lja/b;->e:Lcom/facebook/login/LoginManager;

    .line 22
    .line 23
    iget-object p3, p0, Lja/b;->f:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {p2, p1, p3}, Lcom/facebook/login/LoginManager;->s(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-super {p0}, Lka/i;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lja/b;->e:Lcom/facebook/login/LoginManager;

    .line 5
    .line 6
    iget-object v1, p0, Lja/b;->d:Lcom/facebook/i;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->M(Lcom/facebook/i;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "FaceBookAuth"

    .line 2
    .line 3
    return-object v0
.end method

.method public w(Landroid/app/Activity;IILandroid/content/Intent;Lka/j;)Z
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p5, "activity"

    .line 2
    .line 3
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lka/i;->a:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lja/b;->d:Lcom/facebook/i;

    .line 11
    .line 12
    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/i;->onActivityResult(IILandroid/content/Intent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method
