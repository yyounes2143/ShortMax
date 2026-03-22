.class Lio/bidmachine/w0$a;
.super Ljava/lang/Object;
.source "AdResponseManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/w0;->l(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/bidmachine/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/w0;


# direct methods
.method constructor <init>(Lio/bidmachine/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/w0$a;->a:Lio/bidmachine/w0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/u;Lio/bidmachine/u;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/u;->F()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/u;->F()D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    neg-int p1, p1

    .line 14
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/u;

    .line 2
    .line 3
    check-cast p2, Lio/bidmachine/u;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/w0$a;->a(Lio/bidmachine/u;Lio/bidmachine/u;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
