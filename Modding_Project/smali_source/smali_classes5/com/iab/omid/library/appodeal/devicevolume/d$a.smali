.class Lcom/iab/omid/library/appodeal/devicevolume/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/appodeal/devicevolume/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/appodeal/devicevolume/d;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/appodeal/devicevolume/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->a(Lcom/iab/omid/library/appodeal/devicevolume/d;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/iab/omid/library/appodeal/devicevolume/d;->b(Lcom/iab/omid/library/appodeal/devicevolume/d;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    cmpl-float v1, v1, v0

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/iab/omid/library/appodeal/devicevolume/d;->c(Lcom/iab/omid/library/appodeal/devicevolume/d;)Lcom/iab/omid/library/appodeal/devicevolume/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, v0}, Lcom/iab/omid/library/appodeal/devicevolume/c;->a(F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
