.class Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
        "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;-><init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->k0()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->Z()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    mul-int/2addr v0, p1

    .line 18
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->k0()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 29
    .line 30
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->Z()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    mul-int/2addr p1, p2

    .line 35
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    .line 36
    .line 37
    invoke-static {p2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->d(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-int/2addr v0, p2

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    .line 47
    .line 48
    invoke-static {v0}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->d(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sub-int/2addr p1, v0

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "DefaultMediaPicker"

    .line 70
    .line 71
    const-string v2, "AreaComparator: obj1 - %d, obj2 - %d"

    .line 72
    .line 73
    invoke-static {v1, v2, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    if-ge p2, p1, :cond_0

    .line 77
    .line 78
    const/4 p1, -0x1

    .line 79
    return p1

    .line 80
    :cond_0
    if-le p2, p1, :cond_1

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_1
    const/4 p1, 0x0

    .line 85
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    .line 3
    check-cast p2, Landroid/util/Pair;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a(Landroid/util/Pair;Landroid/util/Pair;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
