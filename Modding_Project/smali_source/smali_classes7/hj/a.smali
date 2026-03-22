.class public final Lhj/a;
.super Ljava/lang/Object;
.source "FunctionGuide.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lhj/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhj/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lhj/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhj/a;->a:Lhj/a;

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
.method public final a(Landroid/app/Activity;)Lij/a;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lij/a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lij/a;-><init>(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
