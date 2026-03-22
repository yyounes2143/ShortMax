.class final Lhp/e$d;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lhp/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lhp/c;


# direct methods
.method public constructor <init>(ILhp/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lhp/e$d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lhp/e$d;->b:Lhp/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lhp/e$d;)I
    .locals 1

    .line 1
    iget v0, p0, Lhp/e$d;->a:I

    .line 2
    .line 3
    iget p1, p1, Lhp/e$d;->a:I

    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lhp/e$d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhp/e$d;->a(Lhp/e$d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
