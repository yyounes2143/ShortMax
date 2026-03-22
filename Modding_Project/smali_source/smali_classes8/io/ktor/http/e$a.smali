.class public final Lio/ktor/http/e$a;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lio/ktor/http/e$a;

.field private static final b:Lio/ktor/http/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/http/e$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/http/e$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/http/e$a;->a:Lio/ktor/http/e$a;

    .line 7
    .line 8
    sget-object v0, Lio/ktor/http/b;->c:Lio/ktor/http/b;

    .line 9
    .line 10
    sput-object v0, Lio/ktor/http/e$a;->b:Lio/ktor/http/e;

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
.method public final a()Lio/ktor/http/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/e$a;->b:Lio/ktor/http/e;

    .line 2
    .line 3
    return-object v0
.end method
