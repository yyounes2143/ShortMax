.class final Lvo/b$c;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvo/b$c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lvo/b$c;->b:[B

    .line 7
    .line 8
    iput-wide p3, p0, Lvo/b$c;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lvo/b$c;->d:J

    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lvo/b$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo/b$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lvo/b$c;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lvo/b$c;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lvo/b$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvo/b$c;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lvo/b$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvo/b$c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method
