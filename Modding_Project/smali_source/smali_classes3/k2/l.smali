.class public Lk2/l;
.super Ljava/lang/Object;
.source "Suppliers.java"


# static fields
.field public static final a:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk2/l$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lk2/l$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk2/l;->a:Lk2/k;

    .line 7
    .line 8
    new-instance v0, Lk2/l$c;

    .line 9
    .line 10
    invoke-direct {v0}, Lk2/l$c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lk2/l;->b:Lk2/k;

    .line 14
    .line 15
    new-instance v0, Lk2/l$d;

    .line 16
    .line 17
    invoke-direct {v0}, Lk2/l$d;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lk2/l;->c:Lk2/k;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lk2/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk2/l$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lk2/l$a;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
