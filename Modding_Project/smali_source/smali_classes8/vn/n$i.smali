.class abstract Lvn/n$i;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn/n$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lvn/n$i<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lzm/b0;

.field public final c:I

.field public final d:Lio/bidmachine/media3/common/a;


# direct methods
.method public constructor <init>(ILzm/b0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvn/n$i;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lvn/n$i;->b:Lzm/b0;

    .line 7
    .line 8
    iput p3, p0, Lvn/n$i;->c:I

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lzm/b0;->a(I)Lio/bidmachine/media3/common/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lvn/n$i;->d:Lio/bidmachine/media3/common/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lvn/n$i;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
