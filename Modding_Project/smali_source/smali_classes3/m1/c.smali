.class final Lm1/c;
.super Ljava/lang/Object;
.source "OnDebounceClickListener.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:J

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lm1/c;->a:J

    .line 10
    .line 11
    iput-object p3, p0, Lm1/c;->b:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method private final a()J
    .locals 2

    .line 1
    sget-object v0, Lo1/a;->a:Lo1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo1/a;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lo1/a;->c()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v0, p0, Lm1/c;->c:J

    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method

.method private final b(J)V
    .locals 2

    .line 1
    sget-object v0, Lo1/a;->a:Lo1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo1/a;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lo1/a;->e(J)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-wide p1, p0, Lm1/c;->c:J

    .line 14
    .line 15
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-direct {p0}, Lm1/c;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sub-long v2, v0, v2

    .line 15
    .line 16
    iget-wide v4, p0, Lm1/c;->a:J

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Lm1/c;->b(J)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lm1/c;->b:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
