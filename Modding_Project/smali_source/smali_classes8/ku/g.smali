.class public Lku/g;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lku/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lku/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/g$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lku/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lqu/c;->e(Lku/g$a;)Lku/g$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lku/g;->a:Lku/g$a;

    .line 9
    .line 10
    return-void
.end method
