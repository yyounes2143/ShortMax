.class final Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;
.super Ljava/lang/Object;
.source "MonotonicFrameClock.android.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/DefaultChoreographerFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMonotonicFrameClock.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonotonicFrameClock.android.kt\nandroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $co:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $onFrame:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgt/i;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/i<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$co:Lgt/i;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$onFrame:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$co:Lgt/i;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/DefaultChoreographerFrameClock;->INSTANCE:Landroidx/compose/runtime/DefaultChoreographerFrameClock;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$onFrame:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
