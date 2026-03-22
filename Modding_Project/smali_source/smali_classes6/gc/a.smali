.class public abstract Lgc/a;
.super Ljava/lang/Object;
.source "CommandComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/a$c;,
        Lgc/a$d;,
        Lgc/a$f;,
        Lgc/a$e;,
        Lgc/a$a;,
        Lgc/a$g;,
        Lgc/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lgc/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgc/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lgc/a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgc/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgc/a;->a:Lgc/a$b;

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    new-array v0, v0, [Lgc/a;

    .line 11
    .line 12
    sget-object v1, Lgc/a$c;->c:Lgc/a$c;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    sget-object v1, Lgc/a$d;->c:Lgc/a$d;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    sget-object v1, Lgc/a$f;->c:Lgc/a$f;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    sget-object v1, Lgc/a$e;->c:Lgc/a$e;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    sget-object v1, Lgc/a$a;->c:Lgc/a$a;

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    sget-object v1, Lgc/a$g;->c:Lgc/a$g;

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    aput-object v1, v0, v2

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lgc/a;->b:Ljava/util/List;

    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgc/a;-><init>()V

    return-void
.end method
