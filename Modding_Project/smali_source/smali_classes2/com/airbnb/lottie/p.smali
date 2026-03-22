.class public final synthetic Lcom/airbnb/lottie/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/n0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    check-cast p1, Lcom/airbnb/lottie/i;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/s;->i(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/i;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
