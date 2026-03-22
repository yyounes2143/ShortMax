.class public abstract Lec/b;
.super Ljava/lang/Object;
.source "Decorator.java"

# interfaces
.implements Lec/c;


# instance fields
.field protected a:Lec/c;

.field protected b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 5
    .line 6
    iput-object p2, p0, Lec/b;->a:Lec/c;

    .line 7
    .line 8
    return-void
.end method
