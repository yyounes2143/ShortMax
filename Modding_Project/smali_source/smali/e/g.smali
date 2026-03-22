.class public final Le/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lca/d;

    .line 2
    .line 3
    invoke-virtual {p2}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p1, Lca/d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, p1}, Lps/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method
