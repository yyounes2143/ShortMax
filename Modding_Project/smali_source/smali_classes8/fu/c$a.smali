.class final Lfu/c$a;
.super Lfu/c;
.source "BuiltInFactories.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfu/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lfu/e$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfu/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lfu/g;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lfu/i;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lfu/i;-><init>(Ljava/util/concurrent/Executor;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [Lfu/e$a;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, p1, v2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, p1, v0

    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lfu/h$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfu/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lfu/u;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
