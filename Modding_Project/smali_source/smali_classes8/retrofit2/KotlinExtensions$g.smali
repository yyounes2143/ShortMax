.class final Lretrofit2/KotlinExtensions$g;
.super Ljava/lang/Object;
.source "KotlinExtensions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/KotlinExtensions;->e(Ljava/lang/Throwable;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lrs/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrs/c<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrs/c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lretrofit2/KotlinExtensions$g;->a:Lrs/c;

    .line 2
    .line 3
    iput-object p2, p0, Lretrofit2/KotlinExtensions$g;->b:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lretrofit2/KotlinExtensions$g;->a:Lrs/c;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 8
    .line 9
    iget-object v1, p0, Lretrofit2/KotlinExtensions$g;->b:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
