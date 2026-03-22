.class public final Lao/o$b;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lao/o$b;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lao/o$b;->c:I

    .line 5
    iput p3, p0, Lao/o$b;->b:I

    .line 6
    iput p4, p0, Lao/o$b;->d:I

    .line 7
    iput-wide p5, p0, Lao/o$b;->e:J

    .line 8
    iput p7, p0, Lao/o$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIJILao/o$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lao/o$b;-><init>(Ljava/lang/String;IIIJI)V

    return-void
.end method
