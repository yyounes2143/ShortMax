.class Lp9/d$a;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/d;->a()Lq9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lp9/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lp9/d;


# direct methods
.method constructor <init>(Lp9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp9/d$a;->a:Lp9/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lp9/f;Lp9/f;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lp9/f;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lp9/f;->d()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp9/f;

    .line 2
    .line 3
    check-cast p2, Lp9/f;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lp9/d$a;->a(Lp9/f;Lp9/f;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
