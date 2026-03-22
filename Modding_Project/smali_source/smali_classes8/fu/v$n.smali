.class final Lfu/v$n;
.super Lfu/v;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lfu/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lfu/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/h<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lfu/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/h<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfu/v;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfu/v$n;->a:Lfu/h;

    .line 5
    .line 6
    iput-boolean p2, p0, Lfu/v$n;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method a(Lfu/a0;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/a0;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lfu/v$n;->a:Lfu/h;

    .line 5
    .line 6
    invoke-interface {v0, p2}, Lfu/h;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iget-boolean v1, p0, Lfu/v$n;->b:Z

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, v1}, Lfu/a0;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
