.class public final Lsr/d;
.super Lds/b;
.source "HttpRequestPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsr/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lds/b<",
        "Ljava/lang/Object;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lsr/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lds/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Lds/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:Lds/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:Lds/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Lds/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsr/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lsr/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lsr/d;->h:Lsr/d$a;

    .line 8
    .line 9
    new-instance v0, Lds/f;

    .line 10
    .line 11
    const-string v1, "Before"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lsr/d;->i:Lds/f;

    .line 17
    .line 18
    new-instance v0, Lds/f;

    .line 19
    .line 20
    const-string v1, "State"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lsr/d;->j:Lds/f;

    .line 26
    .line 27
    new-instance v0, Lds/f;

    .line 28
    .line 29
    const-string v1, "Transform"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lsr/d;->k:Lds/f;

    .line 35
    .line 36
    new-instance v0, Lds/f;

    .line 37
    .line 38
    const-string v1, "Render"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lsr/d;->l:Lds/f;

    .line 44
    .line 45
    new-instance v0, Lds/f;

    .line 46
    .line 47
    const-string v1, "Send"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lsr/d;->m:Lds/f;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .line 1
    sget-object v0, Lsr/d;->i:Lds/f;

    .line 2
    .line 3
    sget-object v1, Lsr/d;->j:Lds/f;

    .line 4
    .line 5
    sget-object v2, Lsr/d;->k:Lds/f;

    .line 6
    .line 7
    sget-object v3, Lsr/d;->l:Lds/f;

    .line 8
    .line 9
    sget-object v4, Lsr/d;->m:Lds/f;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lds/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lds/b;-><init>([Lds/f;)V

    .line 16
    .line 17
    .line 18
    iput-boolean p1, p0, Lsr/d;->g:Z

    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic s()Lds/f;
    .locals 1

    .line 1
    sget-object v0, Lsr/d;->i:Lds/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic t()Lds/f;
    .locals 1

    .line 1
    sget-object v0, Lsr/d;->l:Lds/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic u()Lds/f;
    .locals 1

    .line 1
    sget-object v0, Lsr/d;->m:Lds/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic v()Lds/f;
    .locals 1

    .line 1
    sget-object v0, Lsr/d;->j:Lds/f;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsr/d;->g:Z

    .line 2
    .line 3
    return v0
.end method
