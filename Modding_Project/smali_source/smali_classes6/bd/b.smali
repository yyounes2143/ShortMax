.class public final Lbd/b;
.super Ljava/lang/Object;
.source "BillingLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lbd/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lbd/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbd/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lbd/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbd/b;->a:Lbd/b;

    .line 7
    .line 8
    new-instance v0, Lbd/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lbd/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lbd/b;->b:Lbd/c;

    .line 14
    .line 15
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
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lbd/b;->b:Lbd/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lbd/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lbd/b;->b:Lbd/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lbd/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lbd/c;)V
    .locals 1
    .param p1    # Lbd/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "logger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lbd/b;->b:Lbd/c;

    .line 7
    .line 8
    return-void
.end method
