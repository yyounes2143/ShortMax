.class Ln3/c$a;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lr3/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/c;-><init>(Lf2/a;Lr3/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr3/m$b<",
        "Lf2/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ln3/c;


# direct methods
.method constructor <init>(Ln3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/c$a;->a:Ln3/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p1, Lf2/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ln3/c$a;->b(Lf2/a;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lf2/a;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c$a;->a:Ln3/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln3/c;->f(Lf2/a;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
