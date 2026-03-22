.class public final Lbq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lbq/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbq/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lbq/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbq/c;->a:Lbq/c;

    .line 7
    .line 8
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

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Lbq/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "exo"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v0, "PlayerFactory"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-array p1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v1, "Create player (ExoPlayerImpl)"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcq/a;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcq/a;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v1, "Create player (MediaPlayerImpl)"

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ldq/a;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ldq/a;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object p1
.end method
