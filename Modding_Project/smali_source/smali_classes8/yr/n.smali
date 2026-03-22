.class public final Lyr/n;
.super Ljava/lang/Object;
.source "PlatformUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lyr/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Z

.field private static final c:Z

.field private static final d:Z

.field private static final e:Z

.field private static final f:Z

.field private static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lyr/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lyr/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyr/n;->a:Lyr/n;

    .line 7
    .line 8
    invoke-static {v0}, Lyr/o;->a(Lyr/n;)Lio/ktor/util/Platform;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lio/ktor/util/Platform;->Browser:Lio/ktor/util/Platform;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    :goto_0
    sput-boolean v1, Lyr/n;->b:Z

    .line 22
    .line 23
    invoke-static {v0}, Lyr/o;->a(Lyr/n;)Lio/ktor/util/Platform;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lio/ktor/util/Platform;->Node:Lio/ktor/util/Platform;

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    move v1, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_1
    sput-boolean v1, Lyr/n;->c:Z

    .line 35
    .line 36
    invoke-static {v0}, Lyr/o;->a(Lyr/n;)Lio/ktor/util/Platform;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lio/ktor/util/Platform;->Jvm:Lio/ktor/util/Platform;

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    move v1, v4

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v1, v3

    .line 47
    :goto_2
    sput-boolean v1, Lyr/n;->d:Z

    .line 48
    .line 49
    invoke-static {v0}, Lyr/o;->a(Lyr/n;)Lio/ktor/util/Platform;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Lio/ktor/util/Platform;->Native:Lio/ktor/util/Platform;

    .line 54
    .line 55
    if-ne v1, v2, :cond_3

    .line 56
    .line 57
    move v3, v4

    .line 58
    :cond_3
    sput-boolean v3, Lyr/n;->e:Z

    .line 59
    .line 60
    invoke-static {v0}, Lyr/o;->b(Lyr/n;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sput-boolean v1, Lyr/n;->f:Z

    .line 65
    .line 66
    invoke-static {v0}, Lyr/o;->c(Lyr/n;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sput-boolean v0, Lyr/n;->g:Z

    .line 71
    .line 72
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


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyr/n;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyr/n;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyr/n;->e:Z

    .line 2
    .line 3
    return v0
.end method
