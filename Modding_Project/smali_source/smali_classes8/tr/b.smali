.class public final Ltr/b;
.super Lds/b;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lds/b<",
        "Ltr/c;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Ltr/b$a;
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


# instance fields
.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltr/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ltr/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltr/b;->h:Ltr/b$a;

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
    sput-object v0, Ltr/b;->i:Lds/f;

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
    sput-object v0, Ltr/b;->j:Lds/f;

    .line 26
    .line 27
    new-instance v0, Lds/f;

    .line 28
    .line 29
    const-string v1, "After"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Ltr/b;->k:Lds/f;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 1
    sget-object v0, Ltr/b;->i:Lds/f;

    .line 2
    .line 3
    sget-object v1, Ltr/b;->j:Lds/f;

    .line 4
    .line 5
    sget-object v2, Ltr/b;->k:Lds/f;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lds/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lds/b;-><init>([Lds/f;)V

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Ltr/b;->g:Z

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic s()Lds/f;
    .locals 1

    .line 1
    sget-object v0, Ltr/b;->k:Lds/f;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltr/b;->g:Z

    .line 2
    .line 3
    return v0
.end method
