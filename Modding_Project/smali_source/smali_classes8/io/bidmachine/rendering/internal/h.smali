.class public final Lio/bidmachine/rendering/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/h$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lio/bidmachine/rendering/internal/h$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Lio/bidmachine/rendering/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lgt/c0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lgt/c0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lgt/c0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lgt/c0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/h$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/h$e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/rendering/internal/h;->i:Lio/bidmachine/rendering/internal/h$e;

    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/rendering/internal/h;

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/internal/h$a;->d:Lio/bidmachine/rendering/internal/h$a;

    .line 12
    .line 13
    sget-object v2, Lio/bidmachine/rendering/internal/h$b;->d:Lio/bidmachine/rendering/internal/h$b;

    .line 14
    .line 15
    sget-object v3, Lio/bidmachine/rendering/internal/h$c;->d:Lio/bidmachine/rendering/internal/h$c;

    .line 16
    .line 17
    sget-object v4, Lio/bidmachine/rendering/internal/h$d;->d:Lio/bidmachine/rendering/internal/h$d;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/rendering/internal/h;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lio/bidmachine/rendering/internal/h;->j:Lio/bidmachine/rendering/internal/h;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lgt/c0;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lgt/c0;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lgt/c0;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lgt/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "mainProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mainImmediateProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ioProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "defaultProvider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/bidmachine/rendering/internal/h;->a:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    iput-object p2, p0, Lio/bidmachine/rendering/internal/h;->b:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    iput-object p3, p0, Lio/bidmachine/rendering/internal/h;->c:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    iput-object p4, p0, Lio/bidmachine/rendering/internal/h;->d:Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    new-instance p1, Lio/bidmachine/rendering/internal/h$h;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/h$h;-><init>(Lio/bidmachine/rendering/internal/h;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lio/bidmachine/rendering/internal/h;->e:Lms/i;

    .line 42
    .line 43
    new-instance p1, Lio/bidmachine/rendering/internal/h$i;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/h$i;-><init>(Lio/bidmachine/rendering/internal/h;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lio/bidmachine/rendering/internal/h;->f:Lms/i;

    .line 53
    .line 54
    new-instance p1, Lio/bidmachine/rendering/internal/h$g;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/h$g;-><init>(Lio/bidmachine/rendering/internal/h;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lio/bidmachine/rendering/internal/h;->g:Lms/i;

    .line 64
    .line 65
    new-instance p1, Lio/bidmachine/rendering/internal/h$f;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/h$f;-><init>(Lio/bidmachine/rendering/internal/h;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lio/bidmachine/rendering/internal/h;->h:Lms/i;

    .line 75
    .line 76
    return-void
.end method

.method public static final synthetic a()Lio/bidmachine/rendering/internal/h;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/internal/h;->j:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/h;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/h;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/h;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/h;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lio/bidmachine/rendering/internal/h;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/h;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lio/bidmachine/rendering/internal/h;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/h;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final j()Lio/bidmachine/rendering/internal/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/internal/h;->i:Lio/bidmachine/rendering/internal/h$e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h$e;->a()Lio/bidmachine/rendering/internal/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final c()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/h;->h:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/c0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/h;->g:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/c0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/h;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/c0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/h;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/c0;

    .line 8
    .line 9
    return-object v0
.end method
