.class public final Lwr/m;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwr/m$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lwr/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwr/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lwr/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwr/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwr/m;->b:Lwr/m$a;

    .line 8
    .line 9
    new-instance v2, Lwr/m;

    .line 10
    .line 11
    const-string v0, "GET"

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v2, Lwr/m;->c:Lwr/m;

    .line 17
    .line 18
    new-instance v3, Lwr/m;

    .line 19
    .line 20
    const-string v0, "POST"

    .line 21
    .line 22
    invoke-direct {v3, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lwr/m;->d:Lwr/m;

    .line 26
    .line 27
    new-instance v4, Lwr/m;

    .line 28
    .line 29
    const-string v0, "PUT"

    .line 30
    .line 31
    invoke-direct {v4, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lwr/m;->e:Lwr/m;

    .line 35
    .line 36
    new-instance v5, Lwr/m;

    .line 37
    .line 38
    const-string v0, "PATCH"

    .line 39
    .line 40
    invoke-direct {v5, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v5, Lwr/m;->f:Lwr/m;

    .line 44
    .line 45
    new-instance v6, Lwr/m;

    .line 46
    .line 47
    const-string v0, "DELETE"

    .line 48
    .line 49
    invoke-direct {v6, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v6, Lwr/m;->g:Lwr/m;

    .line 53
    .line 54
    new-instance v7, Lwr/m;

    .line 55
    .line 56
    const-string v0, "HEAD"

    .line 57
    .line 58
    invoke-direct {v7, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v7, Lwr/m;->h:Lwr/m;

    .line 62
    .line 63
    new-instance v8, Lwr/m;

    .line 64
    .line 65
    const-string v0, "OPTIONS"

    .line 66
    .line 67
    invoke-direct {v8, v0}, Lwr/m;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v8, Lwr/m;->i:Lwr/m;

    .line 71
    .line 72
    filled-new-array/range {v2 .. v8}, [Lwr/m;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lwr/m;->j:Ljava/util/List;

    .line 81
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

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
    iput-object p1, p0, Lwr/m;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic a()Lwr/m;
    .locals 1

    .line 1
    sget-object v0, Lwr/m;->c:Lwr/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lwr/m;
    .locals 1

    .line 1
    sget-object v0, Lwr/m;->h:Lwr/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lwr/m;
    .locals 1

    .line 1
    sget-object v0, Lwr/m;->d:Lwr/m;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lwr/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lwr/m;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lwr/m;

    .line 12
    .line 13
    iget-object v1, p0, Lwr/m;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lwr/m;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lwr/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HttpMethod(value="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lwr/m;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
