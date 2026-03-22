.class public final Lcom/facebook/internal/l0$f$a;
.super Ljava/lang/Object;
.source "NativeProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/l0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/internal/l0$f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/internal/l0$e;I)Lcom/facebook/internal/l0$f;
    .locals 2
    .param p1    # Lcom/facebook/internal/l0$e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/l0$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/l0$f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/facebook/internal/l0$f;->a(Lcom/facebook/internal/l0$f;Lcom/facebook/internal/l0$e;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p2}, Lcom/facebook/internal/l0$f;->b(Lcom/facebook/internal/l0$f;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b()Lcom/facebook/internal/l0$f;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/l0$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/l0$f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Lcom/facebook/internal/l0$f;->b(Lcom/facebook/internal/l0$f;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
