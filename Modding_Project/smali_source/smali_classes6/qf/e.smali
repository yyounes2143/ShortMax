.class public final Lqf/e;
.super Ljava/lang/Object;
.source "PayTypeManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lqf/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqf/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lqf/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqf/e;->a:Lqf/e;

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


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
