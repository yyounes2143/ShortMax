.class Lr3/k$a;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lr3/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr3/k;->a(Lk2/k;Ln2/c;Lr3/w$a;ZZLr3/m$b;)Lr3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr3/c0<",
        "Ly3/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lr3/k;


# direct methods
.method constructor <init>(Lr3/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/k$a;->a:Lr3/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ly3/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr3/k$a;->b(Ly3/e;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Ly3/e;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ly3/e;->getSizeInBytes()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
