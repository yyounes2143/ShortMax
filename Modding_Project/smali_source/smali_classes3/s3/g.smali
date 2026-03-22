.class public final Ls3/g;
.super Ljava/lang/Object;
.source "RotationOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRotationOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotationOptions.kt\ncom/facebook/imagepipeline/common/RotationOptions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Ls3/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ls3/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ls3/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ls3/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ls3/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ls3/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls3/g;->c:Ls3/g$a;

    .line 8
    .line 9
    new-instance v0, Ls3/g;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Ls3/g;-><init>(IZ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ls3/g;->d:Ls3/g;

    .line 17
    .line 18
    new-instance v0, Ls3/g;

    .line 19
    .line 20
    const/4 v3, -0x2

    .line 21
    invoke-direct {v0, v3, v2}, Ls3/g;-><init>(IZ)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Ls3/g;->e:Ls3/g;

    .line 25
    .line 26
    new-instance v0, Ls3/g;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v0, v1, v2}, Ls3/g;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Ls3/g;->f:Ls3/g;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ls3/g;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Ls3/g;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic a()Ls3/g;
    .locals 1

    .line 1
    sget-object v0, Ls3/g;->d:Ls3/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ls3/g;
    .locals 1

    .line 1
    sget-object v0, Ls3/g;->f:Ls3/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Ls3/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ls3/g;->c:Ls3/g$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/g$a;->a()Ls3/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final d()Ls3/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ls3/g;->c:Ls3/g$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/g$a;->b()Ls3/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls3/g;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ls3/g;

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
    iget v1, p0, Ls3/g;->a:I

    .line 12
    .line 13
    check-cast p1, Ls3/g;

    .line 14
    .line 15
    iget v3, p1, Ls3/g;->a:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Ls3/g;->b:Z

    .line 20
    .line 21
    iget-boolean p1, p1, Ls3/g;->b:Z

    .line 22
    .line 23
    if-ne v1, p1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v0, v2

    .line 27
    :goto_0
    return v0
.end method

.method public final f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls3/g;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Ls3/g;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Rotation is set to use EXIF"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget v0, p0, Ls3/g;->a:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget v0, p0, Ls3/g;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ls3/g;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Ls3/g;->b:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lr2/a;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    iget v0, p0, Ls3/g;->a:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Ls3/g;->b:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v2, "%d defer:%b"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "format(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
