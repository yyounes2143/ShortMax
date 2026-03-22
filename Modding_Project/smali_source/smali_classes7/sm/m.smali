.class public Lsm/m;
.super Lsm/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsm/i<",
        "Lio/bidmachine/iab/vast/view/CircleCountdownView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lsm/i;-><init>(Landroid/view/View$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic c(Landroid/content/Context;Landroid/view/View;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lsm/m;->r(Landroid/content/Context;Lio/bidmachine/iab/vast/view/CircleCountdownView;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic h(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lsm/m;->s(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected j(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/IabElementStyle;->F()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "repeatfill"

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 16
    .line 17
    invoke-direct {p1}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lio/bidmachine/iab/utils/IabElementStyle;->a0(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    sget-object p2, Lsm/a;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->g(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    sget-object p1, Lsm/a;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 33
    .line 34
    return-object p1
.end method

.method protected r(Landroid/content/Context;Lio/bidmachine/iab/vast/view/CircleCountdownView;Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/view/CircleCountdownView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMAJJeDLG/7//NAr9/Dv6tHGO8cYxRbDFOjS7u3y/d7BNef67PjIHeTz9swj0M401co52vHi3NPp5sQNH9nXzwIhxbEf6oAAAOpSURBVHgB7M5FAcAwAMDAcUYd+9e6Zy2kcAquKUBVVVXVdv3QiIwTzIvoA8Aq+zDLPmD7YPtg+2D7YPtg+2D7YPtg+2D7YPtg+2D7YPtg+2D7sG17OLrxvCSf6N7HR/KJwvupPsD0t2uX28rjABSGN9YNhCO4lnKQ44K73f9Njc+kpQyWtHR9i+c38tbbNMl8AV4r8izxUhneqvBc1RC8VOPZzLoVjF1IaiTgGeuel3jKBa2omQ1aEVuFoBWlfC9qdxL555fWazMoRQL/CNXfAlEkIL1/tOn2+uhrkYDDZ4kuDV+LBHZ8fV+3SGCX9Wy6inzcjwTcOlXueIFvRQL7/DTplPCtSGCvbo8OouBXkcBpRS/wqUjgxKKED0UHg9AVPm00WXQ4CI8NnzaaLDochE6cdglfigQO6NNuAD+KBA65o13Xj6LDQR2TNkP4UFTBQSPaNC3vi4wxDrIGtCnCW+Pq5BNHdA1KVQRAkpKRwfWNaVPH9VlNSgIB8EGbT1xflDbPCIAapSkCoE8phQAIUWoiCAxKMwTAG6U5AqBK6QcBEKYUQQCMKE0QsMtZDQHwHrSrWUc1KDptiMpiBl3mlO4unFtGspeAJmVKSZxtyX+ku9BjRekJ55ql3atX0ULpPLSk1NF/YhwpfXsFLe6VfnLq3uCqUpQelDaZgBZtSmu1W+AONMgo/mKa0hIaZGlTUHvUnOjep78V37D2oM6KK47IvFPvHWdC+UExTSmpd4uZG9XxCkahKKQ+HhOjznPjC21iyg92NEJQkjNpE8JFkhpXUYQaRtDe9a2id4M2Dzqe7FixcDHnmOernlMHt8pPZOp3M3fUsqZDJm16G1zsgXbNDi6Sa1DbiOcr7WoWLrBJaXxhNqZDGBeY0KEMJVU6TCy10Vf1O5lcmw6pGc5ilejQzEHR2qBDI4MzzFJ0WkHZiE69d5ws1KBTFRok6RRfWjhNP+3JdJSZ4I7vBE7QTXFHswst5gZ33YdwxMY9OcZcQ5MlXcztDAc8RtJ0+YE2K4Mu5v/PB45OTbrVodFDnDytqVAOC+6zgFbzHvcyU6Vtv/iVwaaTyI+Gk4HJvYw8NAs1qCC9hnaPA17srQsPFFq8UOoR3sj2eIF0H56ZDQ2eq5WBl7pVnqVXhNfKbzxZ+mMG723qTZ5ExGbwh/U5Pd5U+7Hgo824FD9Us/2Cf2RTk3v0SvlHXEshWl5uJ4M2aYha9SkSyyeiCAJrhl/Tzc3Nzc3Nzc3N7+6ZjDHKAbJeAAAAAElFTkSuQmCC"

    .line 2
    .line 3
    invoke-static {p1}, Lsm/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method s(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/vast/view/CircleCountdownView;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
