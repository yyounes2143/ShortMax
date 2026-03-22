.class public final Lwg/a;
.super Ljava/lang/Object;
.source "FirebaseRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lwg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lwg/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lwg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwg/a;->a:Lwg/a;

    .line 7
    .line 8
    new-instance v0, Lwg/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lwg/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lwg/a;->b:Lwg/b;

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
.method public final a(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lwg/a;->b:Lwg/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lwg/b;->b(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
