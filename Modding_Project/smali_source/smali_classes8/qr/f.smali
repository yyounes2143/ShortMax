.class public final Lqr/f;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwr/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ldu/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lwr/m;->b:Lwr/m$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwr/m$a;->a()Lwr/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lwr/m$a;->b()Lwr/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v1, v0}, [Lwr/m;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lqr/f;->a:Ljava/util/Set;

    .line 20
    .line 21
    const-string v0, "io.ktor.client.plugins.HttpRedirect"

    .line 22
    .line 23
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lqr/f;->b:Ldu/a;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lqr/f;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lqr/f;->b:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lwr/o;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lqr/f;->d(Lwr/o;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final d(Lwr/o;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lwr/o;->e0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lwr/o;->c:Lwr/o$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lwr/o$a;->s()Lwr/o;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lwr/o;->e0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lwr/o$a;->k()Lwr/o;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lwr/o;->e0()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne p0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lwr/o$a;->S()Lwr/o;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lwr/o;->e0()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ne p0, v1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Lwr/o$a;->F()Lwr/o;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lwr/o;->e0()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne p0, v1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lwr/o$a;->O()Lwr/o;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lwr/o;->e0()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne p0, v0, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v2, 0x0

    .line 64
    :goto_0
    return v2
.end method
