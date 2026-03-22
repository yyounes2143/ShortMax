.class public final Lz6/z;
.super Lz6/c;
.source "FixedTrackSelection.java"


# instance fields
.field private final h:I

.field private final i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/u;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lz6/z;-><init>(Ln6/u;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ln6/u;IIILjava/lang/Object;)V
    .locals 0
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lz6/c;-><init>(Ln6/u;[II)V

    .line 3
    iput p4, p0, Lz6/z;->h:I

    .line 4
    iput-object p5, p0, Lz6/z;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
