.class public final Lao/b$b;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lao/b$b;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lao/b$b;->b:I

    .line 5
    iput p3, p0, Lao/b$b;->d:I

    .line 6
    iput p4, p0, Lao/b$b;->c:I

    .line 7
    iput p5, p0, Lao/b$b;->e:I

    .line 8
    iput p6, p0, Lao/b$b;->f:I

    .line 9
    iput p7, p0, Lao/b$b;->g:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIIILao/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lao/b$b;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
