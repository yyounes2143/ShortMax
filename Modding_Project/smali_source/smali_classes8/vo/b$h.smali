.class final Lvo/b$h;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field public final a:[Lvo/u;

.field public b:Lio/bidmachine/media3/common/a;
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
    new-array p1, p1, [Lvo/u;

    .line 5
    .line 6
    iput-object p1, p0, Lvo/b$h;->a:[Lvo/u;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lvo/b$h;->d:I

    .line 10
    .line 11
    return-void
.end method
