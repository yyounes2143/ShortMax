.class abstract Lz6/m$h;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/m$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lz6/m$h<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ln6/u;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/v0;


# direct methods
.method public constructor <init>(ILn6/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lz6/m$h;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lz6/m$h;->b:Ln6/u;

    .line 7
    .line 8
    iput p3, p0, Lz6/m$h;->c:I

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ln6/u;->c(I)Lcom/google/android/exoplayer2/v0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lz6/m$h;->d:Lcom/google/android/exoplayer2/v0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lz6/m$h;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
