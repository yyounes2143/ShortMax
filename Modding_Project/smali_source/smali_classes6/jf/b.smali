.class public final Ljf/b;
.super Ljava/lang/Object;
.source "MiniWindowPositionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljf/b$a;,
        Ljf/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Ljf/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljf/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljf/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljf/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljf/b;->g:Ljf/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljf/b$b;)V
    .locals 1
    .param p1    # Ljf/b$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ljf/b;->a:Ljf/b$b;

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Ljf/b;->c:I

    .line 13
    .line 14
    iput p1, p0, Ljf/b;->d:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Ljf/b;->f:Z

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Ljf/b;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljf/b;->l(Ljf/b;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ljf/b;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Ljf/b;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ljf/b;->e:Z

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "startLoadingNext -> fromUser("

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x29

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MiniWindowPositionManager"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Ljf/b;->a:Ljf/b$b;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljf/b$b;->a(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method static synthetic h(Ljf/b;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Ljf/b;->g(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic j(Ljf/b;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljf/b;->i(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final l(Ljf/b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljf/b;->a:Ljf/b$b;

    .line 2
    .line 3
    iget v1, p0, Ljf/b;->c:I

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Ljf/b$b;->b(II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v1, p1, v0}, Ljf/b;->j(Ljf/b;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ljf/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ljf/b;->e:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v1, "MiniWindowPositionManager"

    .line 11
    .line 12
    const-string v2, "finishLoadingNext"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Ljf/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Ljf/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "MiniWindowPositionManager"

    .line 4
    .line 5
    const-string v2, "resetPosition"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Ljf/b;->c:I

    .line 12
    .line 13
    iput v0, p0, Ljf/b;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Ljf/b;->d:I

    .line 2
    .line 3
    iget v1, p0, Ljf/b;->b:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p0, v0}, Ljf/b;->k(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    iget v0, p0, Ljf/b;->d:I

    .line 2
    .line 3
    iget v1, p0, Ljf/b;->c:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean p1, p0, Ljf/b;->f:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget p1, p0, Ljf/b;->b:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x6

    .line 21
    if-gt p1, v0, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v1, p1, v0}, Ljf/b;->h(Ljf/b;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget v0, p0, Ljf/b;->d:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Ljf/b;->c:I

    .line 6
    .line 7
    iput p1, p0, Ljf/b;->d:I

    .line 8
    .line 9
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 10
    .line 11
    new-instance v1, Ljf/a;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Ljf/a;-><init>(Ljf/b;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljf/b;->b:I

    .line 2
    .line 3
    return-void
.end method
