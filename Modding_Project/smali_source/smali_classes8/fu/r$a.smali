.class final Lfu/r$a;
.super Lfu/r;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lfu/r<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field private final d:Lfu/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/e<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfu/b0;Lokhttp3/Call$Factory;Lfu/h;Lfu/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/b0;",
            "Lokhttp3/Call$Factory;",
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lfu/e<",
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfu/r;-><init>(Lfu/b0;Lokhttp3/Call$Factory;Lfu/h;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lfu/r$a;->d:Lfu/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected c(Lfu/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lfu/r$a;->d:Lfu/e;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lfu/e;->a(Lfu/d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
