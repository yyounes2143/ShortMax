.class abstract Lp9/g;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final b:Lp9/g;


# instance fields
.field private final a:Lp9/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp9/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2}, Lp9/e;-><init>(Lp9/g;II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lp9/g;->b:Lp9/g;

    .line 9
    .line 10
    return-void
.end method

.method constructor <init>(Lp9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp9/g;->a:Lp9/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method final a(II)Lp9/g;
    .locals 1

    .line 1
    new-instance v0, Lp9/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lp9/e;-><init>(Lp9/g;II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method final b(II)Lp9/g;
    .locals 1

    .line 1
    new-instance v0, Lp9/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lp9/b;-><init>(Lp9/g;II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method abstract c(Lq9/a;[B)V
.end method

.method final d()Lp9/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/g;->a:Lp9/g;

    .line 2
    .line 3
    return-object v0
.end method
