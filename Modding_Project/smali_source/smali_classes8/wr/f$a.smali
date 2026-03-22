.class public final Lwr/f$a;
.super Ljava/lang/Object;
.source "Headers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwr/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lwr/f$a;

.field private static final b:Lwr/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwr/f$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lwr/f$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwr/f$a;->a:Lwr/f$a;

    .line 7
    .line 8
    sget-object v0, Lwr/b;->c:Lwr/b;

    .line 9
    .line 10
    sput-object v0, Lwr/f$a;->b:Lwr/f;

    .line 11
    .line 12
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
.method public final a()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lwr/f$a;->b:Lwr/f;

    .line 2
    .line 3
    return-object v0
.end method
