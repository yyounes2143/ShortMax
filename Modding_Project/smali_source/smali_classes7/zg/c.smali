.class public final Lzg/c;
.super Ljava/lang/Object;
.source "MainRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lzg/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzg/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lzg/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzg/c;->a:Lzg/c;

    .line 7
    .line 8
    new-instance v0, Lzg/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lzg/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lzg/c;->b:Lms/i;

    .line 18
    .line 19
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

.method public static synthetic a()Lzg/a;
    .locals 1

    .line 1
    invoke-static {}, Lzg/c;->e()Lzg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b()Lzg/a;
    .locals 1

    .line 1
    sget-object v0, Lzg/c;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzg/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final e()Lzg/a;
    .locals 1

    .line 1
    new-instance v0, Lzg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lzg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lzg/c;->b()Lzg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzg/a;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lzg/c;->b()Lzg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzg/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
