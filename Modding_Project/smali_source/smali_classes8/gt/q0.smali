.class public final Lgt/q0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lgt/q0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgt/q0;

    .line 2
    .line 3
    invoke-direct {v0}, Lgt/q0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgt/q0;->a:Lgt/q0;

    .line 7
    .line 8
    sget-object v0, Lot/b;->g:Lot/b;

    .line 9
    .line 10
    sput-object v0, Lgt/q0;->b:Lgt/c0;

    .line 11
    .line 12
    sget-object v0, Lgt/v1;->a:Lgt/v1;

    .line 13
    .line 14
    sput-object v0, Lgt/q0;->c:Lgt/c0;

    .line 15
    .line 16
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

.method public static final a()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lgt/q0;->b:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lot/a;->b:Lot/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Lgt/j1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lmt/q;->b:Lgt/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lgt/q0;->c:Lgt/c0;

    .line 2
    .line 3
    return-object v0
.end method
