.class final Lfu/v$q;
.super Lfu/v;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
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
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfu/v;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfu/v$q;->a:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Lfu/a0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/a0;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfu/v$q;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Lfu/a0;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
