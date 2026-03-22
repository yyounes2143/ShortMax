.class Lr3/v$b;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lo2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr3/v;->v(Lr3/m$a;)Lo2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo2/h<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lr3/m$a;

.field final synthetic b:Lr3/v;


# direct methods
.method constructor <init>(Lr3/v;Lr3/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/v$b;->b:Lr3/v;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/v$b;->a:Lr3/m$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lr3/v$b;->b:Lr3/v;

    .line 2
    .line 3
    iget-object v0, p0, Lr3/v$b;->a:Lr3/m$a;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lr3/v;->g(Lr3/v;Lr3/m$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
