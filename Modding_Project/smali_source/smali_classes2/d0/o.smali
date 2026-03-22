.class public final Ld0/o;
.super Ld0/m$a;
.source "ImageSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ld0/m$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/o;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Ld0/o;->b:I

    .line 7
    .line 8
    iput p3, p0, Ld0/o;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Ld0/o;->c:I

    .line 2
    .line 3
    return v0
.end method
