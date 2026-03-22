.class public final Lbf/e;
.super Ljava/lang/Object;
.source "ReviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbf/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lbf/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:I

.field private static final c:Lbf/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lbf/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lbf/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbf/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lbf/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbf/e;->a:Lbf/e;

    .line 7
    .line 8
    new-instance v0, Lbf/e$c;

    .line 9
    .line 10
    invoke-direct {v0}, Lbf/e$c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lbf/e;->c:Lbf/e$a;

    .line 14
    .line 15
    new-instance v0, Lbf/e$d;

    .line 16
    .line 17
    invoke-direct {v0}, Lbf/e$d;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lbf/e;->d:Lbf/e$a;

    .line 21
    .line 22
    new-instance v0, Lbf/e$b;

    .line 23
    .line 24
    invoke-direct {v0}, Lbf/e$b;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lbf/e;->e:Lbf/e$a;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lbf/e;->n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lbf/e;->m()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lbf/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lbf/e;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Lbf/e;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic e(Lbf/e;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lbf/e;->l(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(I)V
    .locals 0

    .line 1
    sput p0, Lbf/e;->b:I

    .line 2
    .line 3
    return-void
.end method

.method private final g()Z
    .locals 3

    .line 1
    sget-object v0, Lng/e;->a:Lng/e;

    .line 2
    .line 3
    const-string v1, "androidReviewSwitch"

    .line 4
    .line 5
    const-string v2, "0"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Lud/b;->A0()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "1"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private final k()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 2
    .line 3
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 4
    .line 5
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "getPackageName(...)"

    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final l(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ReviewManager"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lbf/n;->a:Lbf/n;

    .line 4
    .line 5
    new-instance v2, Lbf/a;

    .line 6
    .line 7
    invoke-direct {v2}, Lbf/a;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lbf/b;

    .line 11
    .line 12
    invoke-direct {v3, p2}, Lbf/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0, p1, v2, v3}, Lbf/n;->i(Ljava/lang/String;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "requestReviewFlow exception -> "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lbf/e;->k()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private static final m()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lbf/e;->a:Lbf/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lbf/e;->k()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method

.method private static final n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lud/b;->M3(Z)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final h()Lbf/e$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lbf/e;->e:Lbf/e$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lbf/e$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lbf/e;->c:Lbf/e$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lbf/e$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lbf/e;->d:Lbf/e$a;

    .line 2
    .line 3
    return-object v0
.end method
