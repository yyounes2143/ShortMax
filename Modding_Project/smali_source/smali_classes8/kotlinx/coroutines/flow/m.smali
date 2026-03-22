.class public interface abstract Lkotlinx/coroutines/flow/m;
.super Ljava/lang/Object;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/m$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/flow/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/m$a;->a:Lkotlinx/coroutines/flow/m$a;

    .line 2
    .line 3
    sput-object v0, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/m$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a(Lkt/i;)Lkt/b;
    .param p1    # Lkt/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/i<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkt/b<",
            "Lkotlinx/coroutines/flow/SharingCommand;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
