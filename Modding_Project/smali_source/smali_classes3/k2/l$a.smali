.class Lk2/l$a;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lk2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/l;->a(Ljava/lang/Object;)Lk2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk2/l$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/l$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
