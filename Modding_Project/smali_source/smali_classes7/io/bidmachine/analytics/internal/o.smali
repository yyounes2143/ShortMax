.class public final Lio/bidmachine/analytics/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/o$i;
    }
.end annotation


# static fields
.field public static final l:Lio/bidmachine/analytics/internal/o$i;

.field private static final m:Lms/i;

.field private static final n:Lms/i;

.field private static final o:Lms/i;

.field private static final p:Lms/i;

.field private static final q:Lms/i;

.field private static final r:Lms/i;

.field private static final s:Lms/i;

.field private static final t:Lms/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private volatile b:Lio/bidmachine/analytics/internal/p;

.field private volatile c:Z

.field private volatile d:Z

.field private final e:Lms/i;

.field private final f:Lms/i;

.field private final g:Lms/i;

.field private final h:Lms/i;

.field private final i:Lms/i;

.field private final j:Lms/i;

.field private final k:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/o$i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/o$i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/analytics/internal/o$d;->a:Lio/bidmachine/analytics/internal/o$d;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/bidmachine/analytics/internal/o;->m:Lms/i;

    .line 16
    .line 17
    sget-object v0, Lio/bidmachine/analytics/internal/o$e;->a:Lio/bidmachine/analytics/internal/o$e;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/bidmachine/analytics/internal/o;->n:Lms/i;

    .line 24
    .line 25
    sget-object v0, Lio/bidmachine/analytics/internal/o$f;->a:Lio/bidmachine/analytics/internal/o$f;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lio/bidmachine/analytics/internal/o;->o:Lms/i;

    .line 32
    .line 33
    sget-object v0, Lio/bidmachine/analytics/internal/o$b;->a:Lio/bidmachine/analytics/internal/o$b;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lio/bidmachine/analytics/internal/o;->p:Lms/i;

    .line 40
    .line 41
    sget-object v0, Lio/bidmachine/analytics/internal/o$h;->a:Lio/bidmachine/analytics/internal/o$h;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lio/bidmachine/analytics/internal/o;->q:Lms/i;

    .line 48
    .line 49
    sget-object v0, Lio/bidmachine/analytics/internal/o$c;->a:Lio/bidmachine/analytics/internal/o$c;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lio/bidmachine/analytics/internal/o;->r:Lms/i;

    .line 56
    .line 57
    sget-object v0, Lio/bidmachine/analytics/internal/o$g;->a:Lio/bidmachine/analytics/internal/o$g;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lio/bidmachine/analytics/internal/o;->s:Lms/i;

    .line 64
    .line 65
    sget-object v0, Lio/bidmachine/analytics/internal/o$a;->a:Lio/bidmachine/analytics/internal/o$a;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lio/bidmachine/analytics/internal/o;->t:Lms/i;

    .line 72
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p1, Lio/bidmachine/analytics/internal/o$o;->a:Lio/bidmachine/analytics/internal/o$o;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->e:Lms/i;

    .line 13
    .line 14
    new-instance p1, Lio/bidmachine/analytics/internal/o$l;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/o$l;-><init>(Lio/bidmachine/analytics/internal/o;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->f:Lms/i;

    .line 24
    .line 25
    new-instance p1, Lio/bidmachine/analytics/internal/o$m;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/o$m;-><init>(Lio/bidmachine/analytics/internal/o;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->g:Lms/i;

    .line 35
    .line 36
    new-instance p1, Lio/bidmachine/analytics/internal/o$n;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/o$n;-><init>(Lio/bidmachine/analytics/internal/o;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->h:Lms/i;

    .line 46
    .line 47
    new-instance p1, Lio/bidmachine/analytics/internal/o$p;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/o$p;-><init>(Lio/bidmachine/analytics/internal/o;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->i:Lms/i;

    .line 57
    .line 58
    new-instance p1, Lio/bidmachine/analytics/internal/o$j;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/o$j;-><init>(Lio/bidmachine/analytics/internal/o;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->j:Lms/i;

    .line 68
    .line 69
    new-instance p1, Lio/bidmachine/analytics/internal/o$q;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/o$q;-><init>(Lio/bidmachine/analytics/internal/o;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->k:Landroid/content/ServiceConnection;

    .line 75
    .line 76
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/o;)Lio/bidmachine/analytics/internal/p;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/bidmachine/analytics/internal/o;->b:Lio/bidmachine/analytics/internal/p;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 8
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/o$i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic a()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o;->t:Lms/i;

    return-object v0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/o;Lio/bidmachine/analytics/internal/p;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o;->b:Lio/bidmachine/analytics/internal/p;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/o;Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/analytics/internal/o;->c:Z

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lms/i;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/o;->p:Lms/i;

    return-object v0
.end method

.method public static final synthetic c(Lio/bidmachine/analytics/internal/o;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c()Lms/i;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/o;->r:Lms/i;

    return-object v0
.end method

.method public static final synthetic d(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o;->m:Lms/i;

    return-object v0
.end method

.method public static final synthetic e(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o;->n:Lms/i;

    return-object v0
.end method

.method public static final synthetic f(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o;->o:Lms/i;

    return-object v0
.end method

.method public static final synthetic g(Lio/bidmachine/analytics/internal/o;)Lkotlin/random/Random;
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->q()Lkotlin/random/Random;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o;->s:Lms/i;

    return-object v0
.end method

.method public static final synthetic h(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o;->q:Lms/i;

    return-object v0
.end method

.method private final k()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/o$i;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/o$i;->g()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private final m()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    sget-object v2, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/o$i;->f()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object v1, v0

    .line 40
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    move-object v0, v1

    .line 63
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->g:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->h:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final q()Lkotlin/random/Random;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/random/Random;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->i:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final s()Landroid/content/ComponentName;
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->k()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v2, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    .line 39
    .line 40
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/o$i;->g()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v3, Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-object v3
.end method


# virtual methods
.method public final a(JLrs/c;)Ljava/lang/Object;
    .locals 2

    .line 6
    new-instance v0, Lio/bidmachine/analytics/internal/o$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/analytics/internal/o$k;-><init>(Lio/bidmachine/analytics/internal/o;Lrs/c;)V

    invoke-static {p1, p2, v0, p3}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->s()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->r()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->k()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    sget-object v0, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/o$i;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->k:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iput-boolean v1, p0, Lio/bidmachine/analytics/internal/o;->d:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "Can\'t connect"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "Library version not found"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "Component name not found"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/o;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/analytics/internal/o;->k:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/bidmachine/analytics/internal/o;->d:Z

    .line 14
    .line 15
    return-void
.end method

.method public final l()Lio/bidmachine/analytics/internal/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/analytics/internal/t0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/bidmachine/analytics/internal/o;->l:Lio/bidmachine/analytics/internal/o$i;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/o$i;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/bidmachine/analytics/internal/o;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/o;->s()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
