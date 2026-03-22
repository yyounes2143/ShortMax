.class public final Lam/d;
.super Ljava/lang/Object;
.source "Strategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lam/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lam/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lam/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lam/d;->a:Lam/d;

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

.method public static final a()Lam/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lam/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lam/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b()Lam/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lam/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lam/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
