.class final Lb6/b$d;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:[Lb6/p;

.field public b:Lcom/google/android/exoplayer2/v0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [Lb6/p;

    .line 5
    .line 6
    iput-object p1, p0, Lb6/b$d;->a:[Lb6/p;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lb6/b$d;->d:I

    .line 10
    .line 11
    return-void
.end method
